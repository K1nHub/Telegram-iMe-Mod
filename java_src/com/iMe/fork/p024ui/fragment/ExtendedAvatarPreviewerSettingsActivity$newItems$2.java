package com.iMe.fork.p024ui.fragment;

import com.iMe.fork.enums.ExtendedAvatarPreviewerItem;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.SharedConfig;
/* compiled from: ExtendedAvatarPreviewerSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$newItems$2 */
/* loaded from: classes3.dex */
final class ExtendedAvatarPreviewerSettingsActivity$newItems$2 extends Lambda implements Function0<List<ExtendedAvatarPreviewerItem>> {
    public static final ExtendedAvatarPreviewerSettingsActivity$newItems$2 INSTANCE = new ExtendedAvatarPreviewerSettingsActivity$newItems$2();

    ExtendedAvatarPreviewerSettingsActivity$newItems$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<ExtendedAvatarPreviewerItem> invoke() {
        List<ExtendedAvatarPreviewerItem> mutableList;
        List<ExtendedAvatarPreviewerItem> selectedExtendedAvatarPreviewerItems = SharedConfig.selectedExtendedAvatarPreviewerItems;
        Intrinsics.checkNotNullExpressionValue(selectedExtendedAvatarPreviewerItems, "selectedExtendedAvatarPreviewerItems");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) selectedExtendedAvatarPreviewerItems);
        return mutableList;
    }
}
