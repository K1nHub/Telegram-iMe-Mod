package com.iMe.fork.p024ui.dialog;

import android.content.Context;
import com.iMe.fork.p024ui.dialog.ForwardCloudBottomSheet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ForwardCloudBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.ForwardCloudBottomSheet$listAdapter$2 */
/* loaded from: classes3.dex */
final class ForwardCloudBottomSheet$listAdapter$2 extends Lambda implements Function0<ForwardCloudBottomSheet.ListAdapter> {
    final /* synthetic */ ForwardCloudBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForwardCloudBottomSheet$listAdapter$2(ForwardCloudBottomSheet forwardCloudBottomSheet) {
        super(0);
        this.this$0 = forwardCloudBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ForwardCloudBottomSheet.ListAdapter invoke() {
        ForwardCloudBottomSheet forwardCloudBottomSheet = this.this$0;
        Context context = forwardCloudBottomSheet.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return new ForwardCloudBottomSheet.ListAdapter(forwardCloudBottomSheet, context);
    }
}