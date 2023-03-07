package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.fragment.SettingsToolsMessageActivity;
/* compiled from: SettingsToolsMessageActivity.kt */
/* renamed from: org.fork.ui.fragment.SettingsToolsMessageActivity$listAdapter$2 */
/* loaded from: classes4.dex */
final class SettingsToolsMessageActivity$listAdapter$2 extends Lambda implements Function0<SettingsToolsMessageActivity.ListAdapter> {
    final /* synthetic */ SettingsToolsMessageActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsToolsMessageActivity$listAdapter$2(SettingsToolsMessageActivity settingsToolsMessageActivity) {
        super(0);
        this.this$0 = settingsToolsMessageActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final SettingsToolsMessageActivity.ListAdapter invoke() {
        return new SettingsToolsMessageActivity.ListAdapter(this.this$0);
    }
}
