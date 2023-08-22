//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <sample_plugin/sample_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) sample_plugin_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SamplePlugin");
  sample_plugin_register_with_registrar(sample_plugin_registrar);
}
