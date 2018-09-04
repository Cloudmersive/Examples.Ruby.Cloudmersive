# Load the gem
#require 'cloudmersive-convert-api-client-1.2.9/lib'
require 'cloudmersive-convert-api-client'

# Setup authorization
CloudmersiveConvertApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'e4c8ad3b-335b-4082-a297-f3153da07770'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveConvertApiClient::CompareDocumentApi.new

input_file1 = File.new("C:\\temp\\original.docx") # File | First input file to perform the operation on.

input_file2 = File.new("C:\\temp\\RevisedByBob.docx") # File | Second input file to perform the operation on (more than 2 can be supplied).


begin
  #Compare Two Word DOCX
  result = api_instance.compare_document_docx(input_file1, input_file2)
  p result
rescue CloudmersiveConvertApiClient::ApiError => e
  puts "Exception when calling CompareDocumentApi->compare_document_docx: #{e}"
end