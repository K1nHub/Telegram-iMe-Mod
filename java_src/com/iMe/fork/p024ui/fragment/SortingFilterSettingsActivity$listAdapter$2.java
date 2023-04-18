package com.iMe.fork.p024ui.fragment;

import android.app.Activity;
import com.iMe.fork.p024ui.fragment.SortingFilterSettingsActivity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SortingFilterSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$listAdapter$2 */
/* loaded from: classes3.dex */
final class SortingFilterSettingsActivity$listAdapter$2 extends Lambda implements Function0<SortingFilterSettingsActivity.ListAdapter> {
    final /* synthetic */ SortingFilterSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortingFilterSettingsActivity$listAdapter$2(SortingFilterSettingsActivity sortingFilterSettingsActivity) {
        super(0);
        this.this$0 = sortingFilterSettingsActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SortingFilterSettingsActivity.ListAdapter invoke() {
        SortingFilterSettingsActivity sortingFilterSettingsActivity = this.this$0;
        Activity parentActivity = sortingFilterSettingsActivity.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return new SortingFilterSettingsActivity.ListAdapter(sortingFilterSettingsActivity, parentActivity);
    }
}
