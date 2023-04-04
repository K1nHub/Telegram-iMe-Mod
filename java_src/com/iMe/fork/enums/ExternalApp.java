package com.iMe.fork.enums;

import android.content.pm.PackageManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.messenger.ApplicationLoader;
/* compiled from: ExternalApp.kt */
/* loaded from: classes3.dex */
public enum ExternalApp {
    WHATSAPP("com.whatsapp"),
    WHATSAPP_BUSINESS("com.whatsapp.w4b"),
    VIBER("com.viber.voip");
    
    public static final Companion Companion = new Companion(null);
    private final String packageName;

    public static final ExternalApp[] getMessengersForForward() {
        return Companion.getMessengersForForward();
    }

    ExternalApp(String str) {
        this.packageName = str;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final boolean isInstalled() {
        try {
            ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(this.packageName, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* compiled from: ExternalApp.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ExternalApp[] getMessengersForForward() {
            return new ExternalApp[]{ExternalApp.WHATSAPP, ExternalApp.WHATSAPP_BUSINESS, ExternalApp.VIBER};
        }
    }
}
