package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.fragment.ExtendedAvatarPreviewerSettingsActivity;
/* compiled from: ExtendedAvatarPreviewerSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$listAdapter$2 */
/* loaded from: classes4.dex */
final class ExtendedAvatarPreviewerSettingsActivity$listAdapter$2 extends Lambda implements Function0<ExtendedAvatarPreviewerSettingsActivity.ListAdapter> {
    final /* synthetic */ ExtendedAvatarPreviewerSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExtendedAvatarPreviewerSettingsActivity$listAdapter$2(ExtendedAvatarPreviewerSettingsActivity extendedAvatarPreviewerSettingsActivity) {
        super(0);
        this.this$0 = extendedAvatarPreviewerSettingsActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ExtendedAvatarPreviewerSettingsActivity.ListAdapter invoke() {
        return new ExtendedAvatarPreviewerSettingsActivity.ListAdapter(this.this$0);
    }
}
