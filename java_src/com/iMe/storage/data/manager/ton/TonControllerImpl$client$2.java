package com.iMe.storage.data.manager.ton;

import drinkless.org.ton.Client;
import drinkless.org.ton.TonApi;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: TonControllerImpl.kt */
/* loaded from: classes3.dex */
final class TonControllerImpl$client$2 extends Lambda implements Function0<Client> {
    public static final TonControllerImpl$client$2 INSTANCE = new TonControllerImpl$client$2();

    TonControllerImpl$client$2() {
        super(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(TonApi.Object object) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Client invoke() {
        return Client.create(new Client.ResultHandler() { // from class: com.iMe.storage.data.manager.ton.TonControllerImpl$client$2$$ExternalSyntheticLambda0
            @Override // drinkless.org.ton.Client.ResultHandler
            public final void onResult(TonApi.Object object) {
                TonControllerImpl$client$2.invoke$lambda$0(object);
            }
        }, null, null);
    }
}
