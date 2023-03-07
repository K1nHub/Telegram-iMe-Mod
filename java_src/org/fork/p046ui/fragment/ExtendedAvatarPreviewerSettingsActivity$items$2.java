package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.enums.ExtendedAvatarPreviewerItem;
/* compiled from: ExtendedAvatarPreviewerSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$items$2 */
/* loaded from: classes4.dex */
final class ExtendedAvatarPreviewerSettingsActivity$items$2 extends Lambda implements Function0<ExtendedAvatarPreviewerItem[]> {
    public static final ExtendedAvatarPreviewerSettingsActivity$items$2 INSTANCE = new ExtendedAvatarPreviewerSettingsActivity$items$2();

    ExtendedAvatarPreviewerSettingsActivity$items$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final ExtendedAvatarPreviewerItem[] invoke() {
        return ExtendedAvatarPreviewerItem.values();
    }
}
