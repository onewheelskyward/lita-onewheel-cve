module Lita
  module Handlers
    class OnewheelCve < Handler
      route /cve-(\d{4}-\d{4})/i, :handle_cve, help: {'text including cve-1234-1234' => 'Will return a link to cve.mitre.org.'}

      def handle_cve(response)
        response.reply 'http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=' + response.matches[0][0]
      end
      Lita.register_handler(self)
    end
  end
end
