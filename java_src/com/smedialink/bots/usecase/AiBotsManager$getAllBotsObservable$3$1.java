package com.smedialink.bots.usecase;

import com.smedialink.bots.domain.model.ShopItem;
import kotlin.jvm.internal.PropertyReference1Impl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public /* synthetic */ class AiBotsManager$getAllBotsObservable$3$1 extends PropertyReference1Impl {
    public static final AiBotsManager$getAllBotsObservable$3$1 INSTANCE = new AiBotsManager$getAllBotsObservable$3$1();

    AiBotsManager$getAllBotsObservable$3$1() {
        super(ShopItem.class, "priority", "getPriority()J", 0);
    }

    @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
    public Object get(Object obj) {
        return Long.valueOf(((ShopItem) obj).getPriority());
    }
}
