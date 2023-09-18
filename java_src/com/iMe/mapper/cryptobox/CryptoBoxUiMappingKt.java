package com.iMe.mapper.cryptobox;

import com.iMe.model.cryptobox.CryptoBoxItem;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxUiMapping.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxUiMappingKt {
    public static final CryptoBoxItem mapToUi(CryptoBoxInfo cryptoBoxInfo, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(cryptoBoxInfo, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return new CryptoBoxItem(cryptoBoxInfo.getId(), cryptoBoxInfo.getFullName(), cryptoBoxInfo.getDescription(), cryptoBoxInfo.getChat().getAvatarUrl(), cryptoBoxInfo.getChat().getId(), cryptoBoxInfo.getChat().getName(), cryptoBoxInfo.getRewardToken().getAvatarUrl(), StringExtKt.formatISODate$default(cryptoBoxInfo.getCreatedAt(), null, 1, null), resourceManager.getString(cryptoBoxInfo.getStatus().getTitleResId()), cryptoBoxInfo.getStatus().getColorResId());
    }
}
