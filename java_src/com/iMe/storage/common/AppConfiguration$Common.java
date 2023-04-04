package com.iMe.storage.common;

import com.google.firebase.FirebaseOptions;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppConfiguration.kt */
/* loaded from: classes3.dex */
public final class AppConfiguration$Common {
    public static final AppConfiguration$Common INSTANCE = new AppConfiguration$Common();
    private static final FirebaseOptions prodGoogleServices;
    private static final FirebaseOptions stageGoogleServices;

    private AppConfiguration$Common() {
    }

    static {
        FirebaseOptions build = new FirebaseOptions.Builder().setApiKey("AIzaSyDFc-hXz0kN_vaEF31KDWeGoX1nKDLZpiM").setApplicationId("1:444157464191:android:dd047cf092fd1ad8").setDatabaseUrl("https://ime-messenger.firebaseio.com").setProjectId("ime-messenger").setStorageBucket("ime-messenger.appspot.com").setGcmSenderId("444157464191").build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
        prodGoogleServices = build;
        FirebaseOptions build2 = new FirebaseOptions.Builder().setApiKey("AIzaSyA3wilu5mej209oqRYot2xCbjOOPb9rl8U").setApplicationId("1:272440335749:android:fcba4e2ff52c4dadd8b8ec").setDatabaseUrl("https://ime-messenger-stage.firebaseio.com").setProjectId("ime-messenger-stage").setStorageBucket("ime-messenger-stage.appspot.com").setGcmSenderId("272440335749").build();
        Intrinsics.checkNotNullExpressionValue(build2, "Builder()\n              …\n                .build()");
        stageGoogleServices = build2;
    }

    public final FirebaseOptions getProdGoogleServices() {
        return prodGoogleServices;
    }

    public final FirebaseOptions getStageGoogleServices() {
        return stageGoogleServices;
    }
}
