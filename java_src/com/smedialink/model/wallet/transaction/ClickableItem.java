package com.smedialink.model.wallet.transaction;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.utils.system.ResourceManager;
/* compiled from: ClickableItem.kt */
/* loaded from: classes3.dex */
public interface ClickableItem {
    String getLinkedText();

    LinkedTextType getLinkedTextType();

    String getMessageText(ResourceManager resourceManager);

    NetworkType getNetworkType();

    String getRecipientAddress();

    TokenCode getTokenCode();
}
