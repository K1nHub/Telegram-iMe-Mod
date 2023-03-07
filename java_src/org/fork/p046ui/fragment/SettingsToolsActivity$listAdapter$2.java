package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.fragment.SettingsToolsActivity;
/* compiled from: SettingsToolsActivity.kt */
/* renamed from: org.fork.ui.fragment.SettingsToolsActivity$listAdapter$2 */
/* loaded from: classes4.dex */
final class SettingsToolsActivity$listAdapter$2 extends Lambda implements Function0<SettingsToolsActivity.ListAdapter> {
    final /* synthetic */ SettingsToolsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsToolsActivity$listAdapter$2(SettingsToolsActivity settingsToolsActivity) {
        super(0);
        this.this$0 = settingsToolsActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final SettingsToolsActivity.ListAdapter invoke() {
        return new SettingsToolsActivity.ListAdapter(this.this$0);
    }
}
