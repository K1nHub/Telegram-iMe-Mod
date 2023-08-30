package com.iMe.navigation.common.configuration;

import com.iMe.model.common.NavigationTab;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NavigationConfiguration.kt */
/* loaded from: classes3.dex */
public final class NavigationConfiguration<T extends NavigationTab<?>> {
    private final List<T> tabs;
    private final NavigationViewConfiguration viewConfiguration;

    static {
        new Companion(null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NavigationConfiguration) {
            NavigationConfiguration navigationConfiguration = (NavigationConfiguration) obj;
            return Intrinsics.areEqual(this.viewConfiguration, navigationConfiguration.viewConfiguration) && Intrinsics.areEqual(this.tabs, navigationConfiguration.tabs);
        }
        return false;
    }

    public int hashCode() {
        return (this.viewConfiguration.hashCode() * 31) + this.tabs.hashCode();
    }

    public String toString() {
        return "NavigationConfiguration(viewConfiguration=" + this.viewConfiguration + ", tabs=" + this.tabs + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NavigationConfiguration(NavigationViewConfiguration viewConfiguration, List<? extends T> tabs) {
        Intrinsics.checkNotNullParameter(viewConfiguration, "viewConfiguration");
        Intrinsics.checkNotNullParameter(tabs, "tabs");
        this.viewConfiguration = viewConfiguration;
        this.tabs = tabs;
    }

    public final NavigationViewConfiguration getViewConfiguration() {
        return this.viewConfiguration;
    }

    public final List<T> getTabs() {
        return this.tabs;
    }

    /* compiled from: NavigationConfiguration.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
