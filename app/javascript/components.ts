function importAll(contextRequire: __WebpackModuleApi.RequireContext) {
  contextRequire.keys().forEach(contextRequire);
}

// Have an entry for _each_ component
const contexts = {
  example: require.context(
    '../components/example',
    true,
    /\.[jt]sx?|.p?css|.s[ca]ss$/
  ),
  navigation: require.context(
    '../components/navigation',
    true,
    /\.[jt]sx?|.p?css|.s[ca]ss$/
  ),
} as const;

export function importComponent(component: keyof typeof contexts) {
  const context = contexts[component];
  if (!context) {
    throw new Error(
      `Can't import ${component}. Available are: ${Object.keys(contexts).join(
        ', '
      )}.`
    );
  }

  importAll(context);
}
