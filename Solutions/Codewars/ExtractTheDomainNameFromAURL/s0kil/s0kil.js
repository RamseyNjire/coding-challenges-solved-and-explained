function filterTraps(string) {
  let result = string;
  ["http://", "https://", "www.", "http://www.", "https://www."].forEach(t => {
    result = result.replace(t, '')
  })
  return result;
}

function domainName(url){
  const a = filterTraps(url)
  const b = a.slice(0, a.indexOf("."))
  return b;
}
