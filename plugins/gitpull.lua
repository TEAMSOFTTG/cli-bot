function run(msg, matches)
if not is_sudo(msg) then
return 
end
text = io.popen("git pull "):read('*all')
  return text
end
return {
  patterns = {
    '^[#/!]gitpull$'
  },
  run = run,
  moderated = true
}
--Channel : @Black_CH