require 'sinatra'


get '/' do
  dirs = Dir['public/data/*'].map do |dir|
    File.basename(dir)
  end
  erb :index,  locals: { dirs: dirs }, layout: :app
end

get '/meetings/:meeting' do
  supported_extensions = ['mp4', 'jpg', 'jpeg']
  meeting = params[:meeting]

  files = Dir["public/data/#{meeting}/*"].map do |file|
    name = File.basename(file)
    extension = file.split('.').last.downcase

    {
      name: name,
      url: "/data/#{meeting}/#{name}",
      extension: extension,
      title: File.basename(file),
      supported: supported_extensions.include?(extension),
    }
  end

  erb :meeting,  locals: { meeting: meeting, files: files }, layout: :app
end
