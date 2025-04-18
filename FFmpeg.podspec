Pod::Spec.new do |s|
    s.name             = 'FFmpeg'
    s.version          = '6.0'   # Must match what ffmpeg-kit-react-native expects.
    s.summary          = 'Custom full-gpl FFmpegKit iOS frameworks from domaxduk.'
    s.homepage         = 'https://github.com/domaxduk/ffmpeg'
    s.license          = { :type => 'LGPL' }
    s.author           = { 'domaxduk' => 'https://github.com/domaxduk' }
    s.platform         = :ios, '12.1'
    s.static_framework = true
  
    # Use the HTTP source to fetch the zipped package directly
    s.source           = { :http => 'https://github.com/NooruddinLakhani/ffmpeg-kit-ios-full-gpl/archive/refs/tags/latest.zip' }
  
    # Because the frameworks are inside the extracted archive under:
    # FFmpeg/
    # we list each of the needed frameworks with the full relative path.
    s.vendored_frameworks = [
      'FFmpeg/libswscale.xcframework',
      'FFmpeg/libswresample.xcframework',
      'FFmpeg/libavutil.xcframework',
      'FFmpeg/libavformat.xcframework',
      'FFmpeg/libavfilter.xcframework',
      'FFmpeg/libavdevice.xcframework',
      'FFmpeg/libavcodec.xcframework',
      'FFmpeg/ffmpegkit.xcframework'
    ]
  end