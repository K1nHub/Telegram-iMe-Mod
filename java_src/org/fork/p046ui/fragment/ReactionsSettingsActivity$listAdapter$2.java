package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.fragment.ReactionsSettingsActivity;
/* compiled from: ReactionsSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.ReactionsSettingsActivity$listAdapter$2 */
/* loaded from: classes4.dex */
final class ReactionsSettingsActivity$listAdapter$2 extends Lambda implements Function0<ReactionsSettingsActivity.ListAdapter> {
    final /* synthetic */ ReactionsSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReactionsSettingsActivity$listAdapter$2(ReactionsSettingsActivity reactionsSettingsActivity) {
        super(0);
        this.this$0 = reactionsSettingsActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ReactionsSettingsActivity.ListAdapter invoke() {
        return new ReactionsSettingsActivity.ListAdapter(this.this$0);
    }
}
