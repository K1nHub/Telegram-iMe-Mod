package com.smedialink.model.wallet;

import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ActionItem.kt */
/* loaded from: classes3.dex */
public interface ActionItem {
    int getIcon();

    int getTitle();

    String getTitle(ResourceManager resourceManager);

    String getTitleString();

    /* compiled from: ActionItem.kt */
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static String getTitle(ActionItem actionItem, ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(actionItem, "this");
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            String titleString = actionItem.getTitleString();
            if (titleString == null || titleString.length() == 0) {
                return resourceManager.getString(actionItem.getTitle());
            }
            String titleString2 = actionItem.getTitleString();
            return titleString2 == null ? "" : titleString2;
        }
    }
}
