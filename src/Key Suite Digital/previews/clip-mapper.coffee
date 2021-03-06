log = (require 'bitwig-nks-preview-generator').logger 'custom-mapper'
###
  NKS Preview MIDI clip mapper for UVI Key Suite Digital.
  
  @param {Object} soundInfo - NKS Sound Info (metadata).
  @return {String} - Bitwig Studio MIDI clip file path.
###
module.exports = (soundInfo) ->
  clip = switch
    when soundInfo.types[0][0] is 'Bass'
      #return absolute path or relative path from this .js file's directory.
      'NKS-Preview-C1-Single.bwclip'
    when soundInfo.types[0][0] is 'Synth Pad'
      'NKS-Preview-Cmaj-Chord.bwclip'
    when soundInfo.types[0][1].includes 'Piano'
      'NKS-Preview-Cmaj-Chord.bwclip'
    else
      'NKS-Preview-C2-Single.bwclip'

  log.info 'NKS Info:', soundInfo, 'Clip:', clip
  clip
