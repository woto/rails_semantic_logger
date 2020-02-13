module RailsSemanticLogger
  module Grape
    class LogSubscriber < ActiveSupport::LogSubscriber
      def endpoint_render(event)
        self.class.logger.info('a' => 'endpoint_render')
      end

      def endpoint_run_validators(event)
        debugger
        logger = SemanticLogger['Grape']
        logger.info('a' => 'endpoint_run_validators')
      end

      def endpoint_run(event)
        self.class.logger.info('a' => 'endpoint_run')
      end

      def endpoint_run_filters(event)
        self.class.logger.info('a' => 'endpoint_run_filters')
      end

      def format_response(event)
        self.class.logger.info('a' => 'format_response')
      end
    end
  end
end