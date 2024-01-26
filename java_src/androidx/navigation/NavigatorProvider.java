package androidx.navigation;

import androidx.navigation.Navigator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NavigatorProvider.kt */
/* loaded from: classes.dex */
public class NavigatorProvider {
    public static final Companion Companion = new Companion(null);
    private static final Map<Class<?>, String> annotationNames = new LinkedHashMap();
    private final Map<String, Navigator<? extends NavDestination>> _navigators = new LinkedHashMap();

    public final Map<String, Navigator<? extends NavDestination>> getNavigators() {
        Map<String, Navigator<? extends NavDestination>> map;
        map = MapsKt__MapsKt.toMap(this._navigators);
        return map;
    }

    public <T extends Navigator<?>> T getNavigator(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (!Companion.validateName$navigation_common_release(name)) {
            throw new IllegalArgumentException("navigator name cannot be an empty string".toString());
        }
        Navigator<? extends NavDestination> navigator = this._navigators.get(name);
        if (navigator != null) {
            return navigator;
        }
        throw new IllegalStateException("Could not find Navigator with name \"" + name + "\". You must call NavController.addNavigator() for each navigation type.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Navigator<? extends NavDestination> addNavigator(Navigator<? extends NavDestination> navigator) {
        Intrinsics.checkNotNullParameter(navigator, "navigator");
        return addNavigator(Companion.getNameForNavigator$navigation_common_release(navigator.getClass()), navigator);
    }

    public Navigator<? extends NavDestination> addNavigator(String name, Navigator<? extends NavDestination> navigator) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(navigator, "navigator");
        if (!Companion.validateName$navigation_common_release(name)) {
            throw new IllegalArgumentException("navigator name cannot be an empty string".toString());
        }
        Navigator<? extends NavDestination> navigator2 = this._navigators.get(name);
        if (Intrinsics.areEqual(navigator2, navigator)) {
            return navigator;
        }
        boolean z = false;
        if (navigator2 != null && navigator2.isAttached()) {
            z = true;
        }
        if (!(!z)) {
            throw new IllegalStateException(("Navigator " + navigator + " is replacing an already attached " + navigator2).toString());
        } else if (!(!navigator.isAttached())) {
            throw new IllegalStateException(("Navigator " + navigator + " is already attached to another NavController").toString());
        } else {
            return this._navigators.put(name, navigator);
        }
    }

    /* compiled from: NavigatorProvider.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean validateName$navigation_common_release(String str) {
            if (str != null) {
                if (str.length() > 0) {
                    return true;
                }
            }
            return false;
        }

        public final String getNameForNavigator$navigation_common_release(Class<? extends Navigator<?>> navigatorClass) {
            Intrinsics.checkNotNullParameter(navigatorClass, "navigatorClass");
            String str = (String) NavigatorProvider.annotationNames.get(navigatorClass);
            if (str == null) {
                Navigator.Name name = (Navigator.Name) navigatorClass.getAnnotation(Navigator.Name.class);
                str = name != null ? name.value() : null;
                if (validateName$navigation_common_release(str)) {
                    NavigatorProvider.annotationNames.put(navigatorClass, str);
                } else {
                    throw new IllegalArgumentException(("No @Navigator.Name annotation found for " + navigatorClass.getSimpleName()).toString());
                }
            }
            Intrinsics.checkNotNull(str);
            return str;
        }
    }
}
