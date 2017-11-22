module CLIMacros
  def with_command(command, *describe_args, &block)
    module_eval do
      def exit_code
        @exit_code
      end

      def stdout
        @stdout
      end

      def stderr
        @stderr
      end

      def run_command!
        subject
      end
    end

    def self.with_args(command_args, &block)
      describe "with arguments #{command_args}" do
        let(:command_args) { command_args }

        module_exec(&block)
      end
    end

    describe command.to_s, *describe_args do
      subject do
        begin
          old_stdout = $stdout
          old_stderr = $stderr
          $stdout = StringIO.new
          $stderr = StringIO.new

          @exit_code = described_class.run([command] + command_args)
          @stdout = $stdout.string
          @stderr = $stderr.string
        ensure
          $stdout = old_stdout
          $stderror = old_stderr
        end
      end

      let(:command_args) { [] }
      let(:command) { command }

      module_exec(&block)
    end
  end
end
