# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mechanize}
  s.version = "2.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Hodel", "Aaron Patterson", "Mike Dalessio", "Akinori MUSHA"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDeDCCAmCgAwIBAgIBATANBgkqhkiG9w0BAQUFADBBMRAwDgYDVQQDDAdkcmJy\nYWluMRgwFgYKCZImiZPyLGQBGRYIc2VnbWVudDcxEzARBgoJkiaJk/IsZAEZFgNu\nZXQwHhcNMTIwMjI4MTc1NDI1WhcNMTMwMjI3MTc1NDI1WjBBMRAwDgYDVQQDDAdk\ncmJyYWluMRgwFgYKCZImiZPyLGQBGRYIc2VnbWVudDcxEzARBgoJkiaJk/IsZAEZ\nFgNuZXQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCbbgLrGLGIDE76\nLV/cvxdEzCuYuS3oG9PrSZnuDweySUfdp/so0cDq+j8bqy6OzZSw07gdjwFMSd6J\nU5ddZCVywn5nnAQ+Ui7jMW54CYt5/H6f2US6U0hQOjJR6cpfiymgxGdfyTiVcvTm\nGj/okWrQl0NjYOYBpDi+9PPmaH2RmLJu0dB/NylsDnW5j6yN1BEI8MfJRR+HRKZY\nmUtgzBwF1V4KIZQ8EuL6I/nHVu07i6IkrpAgxpXUfdJQJi0oZAqXurAV3yTxkFwd\ng62YrrW26mDe+pZBzR6bpLE+PmXCzz7UxUq3AE0gPHbiMXie3EFE0oxnsU3lIduh\nsCANiQ8BAgMBAAGjezB5MAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdDgQW\nBBS5k4Z75VSpdM0AclG2UvzFA/VW5DAfBgNVHREEGDAWgRRkcmJyYWluQHNlZ21l\nbnQ3Lm5ldDAfBgNVHRIEGDAWgRRkcmJyYWluQHNlZ21lbnQ3Lm5ldDANBgkqhkiG\n9w0BAQUFAAOCAQEAPeWzFnrcvC6eVzdlhmjUub2s6qieBkongKRDHQz5MEeQv4LS\nSARnoHY+uCAVL/1xGAhmpzqQ3fJGWK9eBacW/e8E5GF9xQcV3mE1bA0WNaiDlX5j\nU2aI+ZGSblqvHUCxKBHR1s7UMHsbz1saOmgdRTyPx0juJs68ocbUTeYBLWu9V4KP\nzdGAG2JXO2gONg3b4tYDvpBLbry+KOX27iAJulUaH9TiTOULL4ITJVFsK0mYVqmR\nQ8Tno9S3e4XGGP1ZWfLrTWEJbavFfhGHut2iMRwfC7s/YILAHNATopaJdH9DNpd1\nU81zGHMUBOvz/VGT6wJwYJ3emS2nfA2NOHFfgA==\n-----END CERTIFICATE-----\n"]
  s.date = %q{2012-05-15}
  s.description = %q{The Mechanize library is used for automating interaction with websites.
Mechanize automatically stores and sends cookies, follows redirects,
and can follow links and submit forms.  Form fields can be populated and
submitted.  Mechanize also keeps track of the sites that you have visited as
a history.}
  s.email = ["drbrain@segment7.net", "aaronp@rubyforge.org", "mike.dalessio@gmail.com", "knu@idaemons.org"]
  s.files = ["test/test_mechanize.rb", "test/test_mechanize_cookie.rb", "test/test_mechanize_cookie_jar.rb", "test/test_mechanize_directory_saver.rb", "test/test_mechanize_download.rb", "test/test_mechanize_file.rb", "test/test_mechanize_file_connection.rb", "test/test_mechanize_file_request.rb", "test/test_mechanize_file_response.rb", "test/test_mechanize_file_saver.rb", "test/test_mechanize_form.rb", "test/test_mechanize_form_check_box.rb", "test/test_mechanize_form_encoding.rb", "test/test_mechanize_form_field.rb", "test/test_mechanize_form_file_upload.rb", "test/test_mechanize_form_image_button.rb", "test/test_mechanize_form_keygen.rb", "test/test_mechanize_form_multi_select_list.rb", "test/test_mechanize_form_option.rb", "test/test_mechanize_form_radio_button.rb", "test/test_mechanize_form_select_list.rb", "test/test_mechanize_form_textarea.rb", "test/test_mechanize_headers.rb", "test/test_mechanize_history.rb", "test/test_mechanize_http_agent.rb", "test/test_mechanize_http_auth_challenge.rb", "test/test_mechanize_http_auth_realm.rb", "test/test_mechanize_http_auth_store.rb", "test/test_mechanize_http_content_disposition_parser.rb", "test/test_mechanize_http_www_authenticate_parser.rb", "test/test_mechanize_image.rb", "test/test_mechanize_link.rb", "test/test_mechanize_page.rb", "test/test_mechanize_page_encoding.rb", "test/test_mechanize_page_frame.rb", "test/test_mechanize_page_image.rb", "test/test_mechanize_page_link.rb", "test/test_mechanize_page_meta_refresh.rb", "test/test_mechanize_parser.rb", "test/test_mechanize_pluggable_parser.rb", "test/test_mechanize_redirect_limit_reached_error.rb", "test/test_mechanize_redirect_not_get_or_head_error.rb", "test/test_mechanize_response_read_error.rb", "test/test_mechanize_subclass.rb", "test/test_mechanize_util.rb", "test/test_multi_select.rb"]
  s.homepage = %q{http://mechanize.rubyforge.org}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{mechanize}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{The Mechanize library is used for automating interaction with websites}
  s.test_files = ["test/test_mechanize.rb", "test/test_mechanize_cookie.rb", "test/test_mechanize_cookie_jar.rb", "test/test_mechanize_directory_saver.rb", "test/test_mechanize_download.rb", "test/test_mechanize_file.rb", "test/test_mechanize_file_connection.rb", "test/test_mechanize_file_request.rb", "test/test_mechanize_file_response.rb", "test/test_mechanize_file_saver.rb", "test/test_mechanize_form.rb", "test/test_mechanize_form_check_box.rb", "test/test_mechanize_form_encoding.rb", "test/test_mechanize_form_field.rb", "test/test_mechanize_form_file_upload.rb", "test/test_mechanize_form_image_button.rb", "test/test_mechanize_form_keygen.rb", "test/test_mechanize_form_multi_select_list.rb", "test/test_mechanize_form_option.rb", "test/test_mechanize_form_radio_button.rb", "test/test_mechanize_form_select_list.rb", "test/test_mechanize_form_textarea.rb", "test/test_mechanize_headers.rb", "test/test_mechanize_history.rb", "test/test_mechanize_http_agent.rb", "test/test_mechanize_http_auth_challenge.rb", "test/test_mechanize_http_auth_realm.rb", "test/test_mechanize_http_auth_store.rb", "test/test_mechanize_http_content_disposition_parser.rb", "test/test_mechanize_http_www_authenticate_parser.rb", "test/test_mechanize_image.rb", "test/test_mechanize_link.rb", "test/test_mechanize_page.rb", "test/test_mechanize_page_encoding.rb", "test/test_mechanize_page_frame.rb", "test/test_mechanize_page_image.rb", "test/test_mechanize_page_link.rb", "test/test_mechanize_page_meta_refresh.rb", "test/test_mechanize_parser.rb", "test/test_mechanize_pluggable_parser.rb", "test/test_mechanize_redirect_limit_reached_error.rb", "test/test_mechanize_redirect_not_get_or_head_error.rb", "test/test_mechanize_response_read_error.rb", "test/test_mechanize_subclass.rb", "test/test_mechanize_util.rb", "test/test_multi_select.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<net-http-digest_auth>, [">= 1.1.1", "~> 1.1"])
      s.add_runtime_dependency(%q<net-http-persistent>, [">= 2.5.2", "~> 2.5"])
      s.add_runtime_dependency(%q<mime-types>, [">= 1.17.2", "~> 1.17"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_runtime_dependency(%q<ntlm-http>, [">= 0.1.1", "~> 0.1"])
      s.add_runtime_dependency(%q<webrobots>, [">= 0.0.9", "~> 0.0"])
      s.add_runtime_dependency(%q<domain_name>, [">= 0.5.1", "~> 0.5"])
      s.add_development_dependency(%q<minitest>, ["~> 2.11"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<hoe>, ["~> 3.0"])
    else
      s.add_dependency(%q<net-http-digest_auth>, [">= 1.1.1", "~> 1.1"])
      s.add_dependency(%q<net-http-persistent>, [">= 2.5.2", "~> 2.5"])
      s.add_dependency(%q<mime-types>, [">= 1.17.2", "~> 1.17"])
      s.add_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_dependency(%q<ntlm-http>, [">= 0.1.1", "~> 0.1"])
      s.add_dependency(%q<webrobots>, [">= 0.0.9", "~> 0.0"])
      s.add_dependency(%q<domain_name>, [">= 0.5.1", "~> 0.5"])
      s.add_dependency(%q<minitest>, ["~> 2.11"])
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<hoe>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<net-http-digest_auth>, [">= 1.1.1", "~> 1.1"])
    s.add_dependency(%q<net-http-persistent>, [">= 2.5.2", "~> 2.5"])
    s.add_dependency(%q<mime-types>, [">= 1.17.2", "~> 1.17"])
    s.add_dependency(%q<nokogiri>, ["~> 1.4"])
    s.add_dependency(%q<ntlm-http>, [">= 0.1.1", "~> 0.1"])
    s.add_dependency(%q<webrobots>, [">= 0.0.9", "~> 0.0"])
    s.add_dependency(%q<domain_name>, [">= 0.5.1", "~> 0.5"])
    s.add_dependency(%q<minitest>, ["~> 2.11"])
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<hoe>, ["~> 3.0"])
  end
end
