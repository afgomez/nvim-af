{
  extraFiles = {
    "after/compiler/vue-tsc.vim".text = ''
      runtime compiler/tsc.vim

      " CompilerSet makeprg=vue-tsc
      CompilerSet makeprg=npx\ vue-tsc
    '';
  };
}
