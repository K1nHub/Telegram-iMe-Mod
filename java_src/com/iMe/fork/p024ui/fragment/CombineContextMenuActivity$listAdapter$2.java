package com.iMe.fork.p024ui.fragment;

import android.app.Activity;
import com.iMe.fork.p024ui.fragment.CombineContextMenuActivity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CombineContextMenuActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.CombineContextMenuActivity$listAdapter$2 */
/* loaded from: classes3.dex */
final class CombineContextMenuActivity$listAdapter$2 extends Lambda implements Function0<CombineContextMenuActivity.ListAdapter> {
    final /* synthetic */ CombineContextMenuActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineContextMenuActivity$listAdapter$2(CombineContextMenuActivity combineContextMenuActivity) {
        super(0);
        this.this$0 = combineContextMenuActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CombineContextMenuActivity.ListAdapter invoke() {
        CombineContextMenuActivity combineContextMenuActivity = this.this$0;
        Activity parentActivity = combineContextMenuActivity.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return new CombineContextMenuActivity.ListAdapter(combineContextMenuActivity, parentActivity);
    }
}
