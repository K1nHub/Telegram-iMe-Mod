package com.smedialink.utils.extentions.delegate;

import com.smedialink.p031ui.base.mvp.MvpAlertDialog;
import com.smedialink.p031ui.base.mvp.MvpBottomSheet;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ResettableLazyDelegate.kt */
/* loaded from: classes3.dex */
public final class ResettableLazyDelegateKt {
    public static /* synthetic */ ResettableLazy resettableLazy$default(MvpFragment mvpFragment, ResettableLazyManager resettableLazyManager, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            resettableLazyManager = mvpFragment.getMvpBaseDelegate().getResettableLazyManager();
        }
        return resettableLazy(mvpFragment, resettableLazyManager, function0);
    }

    public static final <PROPTYPE> ResettableLazy<PROPTYPE> resettableLazy(MvpFragment mvpFragment, ResettableLazyManager manager, Function0<? extends PROPTYPE> init) {
        Intrinsics.checkNotNullParameter(mvpFragment, "<this>");
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(init, "init");
        return new ResettableLazy<>(manager, init);
    }

    public static /* synthetic */ ResettableLazy resettableLazy$default(MvpBottomSheet mvpBottomSheet, ResettableLazyManager resettableLazyManager, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            resettableLazyManager = mvpBottomSheet.getMvpBaseDelegate().getResettableLazyManager();
        }
        return resettableLazy(mvpBottomSheet, resettableLazyManager, function0);
    }

    public static final <PROPTYPE> ResettableLazy<PROPTYPE> resettableLazy(MvpBottomSheet mvpBottomSheet, ResettableLazyManager manager, Function0<? extends PROPTYPE> init) {
        Intrinsics.checkNotNullParameter(mvpBottomSheet, "<this>");
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(init, "init");
        return new ResettableLazy<>(manager, init);
    }

    public static /* synthetic */ ResettableLazy resettableLazy$default(MvpAlertDialog mvpAlertDialog, ResettableLazyManager resettableLazyManager, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            resettableLazyManager = mvpAlertDialog.getMvpBaseDelegate().getResettableLazyManager();
        }
        return resettableLazy(mvpAlertDialog, resettableLazyManager, function0);
    }

    public static final <PROPTYPE> ResettableLazy<PROPTYPE> resettableLazy(MvpAlertDialog mvpAlertDialog, ResettableLazyManager manager, Function0<? extends PROPTYPE> init) {
        Intrinsics.checkNotNullParameter(mvpAlertDialog, "<this>");
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(init, "init");
        return new ResettableLazy<>(manager, init);
    }
}
