package com.iMe.model.wallet;

import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ActionItem.kt */
/* loaded from: classes4.dex */
public interface ActionItem {
    int getIcon();

    int getTitle();

    String getTitle(ResourceManager resourceManager);

    String getTitleString();

    /* compiled from: ActionItem.kt */
    /* renamed from: com.iMe.model.wallet.ActionItem$-CC  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final /* synthetic */ class CC {
        public static String $default$getTitle(ActionItem _this, ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            String titleString = _this.getTitleString();
            if (titleString == null || titleString.length() == 0) {
                return resourceManager.getString(_this.getTitle());
            }
            String titleString2 = _this.getTitleString();
            return titleString2 == null ? "" : titleString2;
        }
    }
}
