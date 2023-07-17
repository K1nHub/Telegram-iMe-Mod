package com.iMe.model.wallet.transaction;

import com.iMe.storage.domain.utils.system.ResourceManager;
/* compiled from: ClickableItem.kt */
/* loaded from: classes3.dex */
public interface ClickableItem {
    String getLinkedText();

    LinkedTextType getLinkedTextType();

    String getMessageText(ResourceManager resourceManager);

    String getNetworkId();

    String getRecipientAddress();
}
