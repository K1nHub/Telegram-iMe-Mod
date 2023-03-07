package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.enums.DialogType;
/* compiled from: RecentChatsDialogTypesSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.RecentChatsDialogTypesSettingsActivity$dialogTypes$2 */
/* loaded from: classes4.dex */
final class RecentChatsDialogTypesSettingsActivity$dialogTypes$2 extends Lambda implements Function0<DialogType[]> {
    public static final RecentChatsDialogTypesSettingsActivity$dialogTypes$2 INSTANCE = new RecentChatsDialogTypesSettingsActivity$dialogTypes$2();

    RecentChatsDialogTypesSettingsActivity$dialogTypes$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final DialogType[] invoke() {
        return DialogType.values();
    }
}
