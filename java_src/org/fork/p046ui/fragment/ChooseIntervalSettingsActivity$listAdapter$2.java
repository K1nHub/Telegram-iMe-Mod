package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.fragment.ChooseIntervalSettingsActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChooseIntervalSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.ChooseIntervalSettingsActivity$listAdapter$2 */
/* loaded from: classes4.dex */
public final class ChooseIntervalSettingsActivity$listAdapter$2 extends Lambda implements Function0<ChooseIntervalSettingsActivity.ListAdapter> {
    final /* synthetic */ ChooseIntervalSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChooseIntervalSettingsActivity$listAdapter$2(ChooseIntervalSettingsActivity chooseIntervalSettingsActivity) {
        super(0);
        this.this$0 = chooseIntervalSettingsActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ChooseIntervalSettingsActivity.ListAdapter invoke() {
        return new ChooseIntervalSettingsActivity.ListAdapter(this.this$0);
    }
}
