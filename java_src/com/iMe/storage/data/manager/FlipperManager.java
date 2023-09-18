package com.iMe.storage.data.manager;

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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FlipperManager.kt */
/* loaded from: classes4.dex */
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
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NetworkFlipperPlugin>() { // from class: com.iMe.storage.data.manager.FlipperManager$networkFlipperPlugin$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final NetworkFlipperPlugin invoke() {
                return new NetworkFlipperPlugin();
            }
        });
        networkFlipperPlugin$delegate = lazy;
    }

    public final NetworkFlipperPlugin getNetworkFlipperPlugin() {
        return (NetworkFlipperPlugin) networkFlipperPlugin$delegate.getValue();
    }

    public static final void start(Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        FlipperManager flipperManager = INSTANCE;
        if (isFlipperEnabled()) {
            SoLoader.init(applicationContext, false);
            FlipperClient androidFlipperClient = AndroidFlipperClient.getInstance(applicationContext);
            androidFlipperClient.addPlugin(new InspectorFlipperPlugin(applicationContext, DescriptorMapping.withDefaults()));
            androidFlipperClient.addPlugin(new DatabasesFlipperPlugin(applicationContext));
            androidFlipperClient.addPlugin(new SharedPreferencesFlipperPlugin(applicationContext));
            androidFlipperClient.addPlugin(flipperManager.getNetworkFlipperPlugin());
            androidFlipperClient.start();
        }
    }
}
