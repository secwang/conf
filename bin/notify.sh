while watchman watch file.log; do
  if tail -n1 file.log | grep Exception; then
    # your action here
    echo "Exception in tomcat" | terminal-notifier -message "Exception"
  fi
done 

