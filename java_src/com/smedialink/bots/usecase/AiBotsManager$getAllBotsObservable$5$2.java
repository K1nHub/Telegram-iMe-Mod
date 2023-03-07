package com.smedialink.bots.usecase;

import com.smedialink.bots.domain.model.ShopItem;
import kotlin.jvm.internal.PropertyReference1Impl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public /* synthetic */ class AiBotsManager$getAllBotsObservable$5$2 extends PropertyReference1Impl {
    public static final AiBotsManager$getAllBotsObservable$5$2 INSTANCE = new AiBotsManager$getAllBotsObservable$5$2();

    AiBotsManager$getAllBotsObservable$5$2() {
        super(ShopItem.class, "title", "getTitle()Ljava/lang/String;", 0);
    }

    @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
    public Object get(Object obj) {
        return ((ShopItem) obj).getTitle();
    }
}
