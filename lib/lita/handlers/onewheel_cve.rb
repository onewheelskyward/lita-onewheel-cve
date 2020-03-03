module Lita
  module Handlers
    class OnewheelCve < Handler
      config :search_url, default: 'http://www.cve.mitre.org/cgi-bin/cvename.cgi?name='

      route(
        /(\s|^)cve-(?<id>\d{4}-\d+)/i,
        :handle_cve,
        help: {
          'text including cve-1234-1234' => 'Will return a link to cve.mitre.org.'
        }
      )

      def handle_cve(response)
        id = response.match_data['id']
        url = config.search_url + id
        response.reply url
      end

      Lita.register_handler(self)
    end
  end
end
