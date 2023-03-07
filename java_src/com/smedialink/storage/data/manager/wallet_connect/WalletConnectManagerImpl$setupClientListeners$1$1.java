package com.smedialink.storage.data.manager.wallet_connect;

import com.smedialink.storage.data.utils.extentions.RxExtKt;
import com.smedialink.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import io.reactivex.Completable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.PublishSubject;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$setupClientListeners$1$1 extends Lambda implements Function2<Integer, String, Unit> {
    final /* synthetic */ WCSessionStoreItem $sessionStoreItem;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$setupClientListeners$1$1(WalletConnectManagerImpl walletConnectManagerImpl, WCSessionStoreItem wCSessionStoreItem) {
        super(2);
        this.this$0 = walletConnectManagerImpl;
        this.$sessionStoreItem = wCSessionStoreItem;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str) {
        invoke(num.intValue(), str);
        return Unit.INSTANCE;
    }

    public final void invoke(int i, String noName_1) {
        Map map;
        Map map2;
        WalletConnectInteractor walletConnectInteractor;
        SchedulersProvider schedulersProvider;
        CompositeDisposable compositeDisposable;
        Intrinsics.checkNotNullParameter(noName_1, "$noName_1");
        map = this.this$0.wcClients;
        if (map.containsKey(this.$sessionStoreItem.getSession().getKey())) {
            map2 = this.this$0.wcClients;
            map2.remove(this.$sessionStoreItem.getSession().getKey());
            walletConnectInteractor = this.this$0.walletConnectInteractor;
            Completable deleteWalletConnectSession = walletConnectInteractor.deleteWalletConnectSession(this.$sessionStoreItem.getSession().getKey());
            schedulersProvider = this.this$0.schedulersProvider;
            Completable observeOn = deleteWalletConnectSession.observeOn(schedulersProvider.mo707ui());
            final WalletConnectManagerImpl walletConnectManagerImpl = this.this$0;
            final WCSessionStoreItem wCSessionStoreItem = this.$sessionStoreItem;
            Action action = new Action() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$1$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Action
                public final void run() {
                    WalletConnectManagerImpl$setupClientListeners$1$1.m1350invoke$lambda0(WalletConnectManagerImpl.this, wCSessionStoreItem);
                }
            };
            final WalletConnectManagerImpl walletConnectManagerImpl2 = this.this$0;
            Disposable subscribe = observeOn.subscribe(action, new Consumer() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$1$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    WalletConnectManagerImpl$setupClientListeners$1$1.m1351invoke$lambda1(WalletConnectManagerImpl.this, (Throwable) obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "walletConnectInteractor\n…                        )");
            compositeDisposable = this.this$0.subscriptions;
            RxExtKt.autoDispose(subscribe, compositeDisposable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-0  reason: not valid java name */
    public static final void m1350invoke$lambda0(WalletConnectManagerImpl this$0, WCSessionStoreItem sessionStoreItem) {
        List list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sessionStoreItem, "$sessionStoreItem");
        list = this$0.sessionStoreItems;
        list.remove(sessionStoreItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-1  reason: not valid java name */
    public static final void m1351invoke$lambda1(WalletConnectManagerImpl this$0, Throwable th) {
        PublishSubject publishSubject;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        publishSubject = this$0.errorsSubject;
        publishSubject.onNext(th);
    }
}
