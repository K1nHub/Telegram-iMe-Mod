package com.smedialink.storage.data.manager;

import android.content.Context;
import com.facebook.flipper.android.AndroidFlipperClient;
import com.facebook.flipper.core.FlipperClient;
import com.facebook.flipper.plugins.databases.DatabasesFlipperPlugin;
import com.facebook.flipper.plugins.inspector.DescriptorMapping;
import com.facebook.flipper.plugins.inspector.InspectorFlipperPlugin;
import com.facebook.flipper.plugins.network.NetworkFlipperPlugin;
import com.facebook.flipper.plugins.sharedpreferences.SharedPreferencesFlipperPlugin;
import com.facebook.soloader.SoLoader;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FlipperManager.kt */
/* loaded from: classes3.dex */
public final class FlipperManager {
    public static final FlipperManager INSTANCE = new FlipperManager();
    private static final Lazy networkFlipperPlugin$delegate;

    public static final boolean isFlipperEnabled() {
        return false;
    }

    private FlipperManager() {
    }

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(FlipperManager$networkFlipperPlugin$2.INSTANCE);
        networkFlipperPlugin$delegate = lazy;
    }

    public final NetworkFlipperPlugin getNetworkFlipperPlugin() {
        return (NetworkFlipperPlugin) networkFlipperPlugin$delegate.getValue();
    }

    public static final void start(Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        FlipperManager flipperManager = INSTANCE;
        if (isFlipperEnabled()) {
            SoLoader.INSTANCE.init(applicationContext, false);
            FlipperClient androidFlipperClient = AndroidFlipperClient.getInstance(applicationContext);
            androidFlipperClient.addPlugin(new InspectorFlipperPlugin(applicationContext, DescriptorMapping.INSTANCE.withDefaults()));
            androidFlipperClient.addPlugin(new DatabasesFlipperPlugin(applicationContext));
            androidFlipperClient.addPlugin(new SharedPreferencesFlipperPlugin(applicationContext));
            androidFlipperClient.addPlugin(flipperManager.getNetworkFlipperPlugin());
            androidFlipperClient.start();
        }
    }
}
