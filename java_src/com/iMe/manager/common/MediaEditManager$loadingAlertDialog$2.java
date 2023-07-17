package com.iMe.manager.common;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.AlertDialog;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaEditManager.kt */
/* loaded from: classes3.dex */
public final class MediaEditManager$loadingAlertDialog$2 extends Lambda implements Function0<AlertDialog> {
    final /* synthetic */ MediaEditManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaEditManager$loadingAlertDialog$2(MediaEditManager mediaEditManager) {
        super(0);
        this.this$0 = mediaEditManager;
    }

    @Override // kotlin.jvm.functions.Function0
    public final AlertDialog invoke() {
        AlertDialog initLoadingDialog;
        initLoadingDialog = this.this$0.initLoadingDialog();
        return initLoadingDialog;
    }
}
