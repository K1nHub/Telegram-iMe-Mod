package com.iMe.storage.data.manager.wallet_connect;

import com.iMe.storage.data.utils.extentions.RxExtKt;
import com.iMe.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
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
import kotlin.jvm.functions.Function1;
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

    public final void invoke(int i, String str) {
        Map map;
        Map map2;
        WalletConnectInteractor walletConnectInteractor;
        SchedulersProvider schedulersProvider;
        CompositeDisposable compositeDisposable;
        Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
        map = this.this$0.wcClients;
        if (map.containsKey(this.$sessionStoreItem.getSession().getKey())) {
            map2 = this.this$0.wcClients;
            map2.remove(this.$sessionStoreItem.getSession().getKey());
            walletConnectInteractor = this.this$0.walletConnectInteractor;
            Completable deleteWalletConnectSession = walletConnectInteractor.deleteWalletConnectSession(this.$sessionStoreItem.getSession().getKey());
            schedulersProvider = this.this$0.schedulersProvider;
            Completable observeOn = deleteWalletConnectSession.observeOn(schedulersProvider.mo693ui());
            final WalletConnectManagerImpl walletConnectManagerImpl = this.this$0;
            final WCSessionStoreItem wCSessionStoreItem = this.$sessionStoreItem;
            Action action = new Action() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$1$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Action
                public final void run() {
                    WalletConnectManagerImpl$setupClientListeners$1$1.invoke$lambda$0(WalletConnectManagerImpl.this, wCSessionStoreItem);
                }
            };
            final C17492 c17492 = new C17492(this.this$0);
            Disposable subscribe = observeOn.subscribe(action, new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$1$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    WalletConnectManagerImpl$setupClientListeners$1$1.invoke$lambda$1(Function1.this, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "private fun setupClientL…        }\n        }\n    }");
            compositeDisposable = this.this$0.subscriptions;
            RxExtKt.autoDispose(subscribe, compositeDisposable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletConnectManagerImpl.kt */
    /* renamed from: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$1$2 */
    /* loaded from: classes3.dex */
    public static final class C17492 extends Lambda implements Function1<Throwable, Unit> {
        final /* synthetic */ WalletConnectManagerImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17492(WalletConnectManagerImpl walletConnectManagerImpl) {
            super(1);
            this.this$0 = walletConnectManagerImpl;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            PublishSubject publishSubject;
            publishSubject = this.this$0.errorsSubject;
            publishSubject.onNext(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(WalletConnectManagerImpl this$0, WCSessionStoreItem sessionStoreItem) {
        List list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sessionStoreItem, "$sessionStoreItem");
        list = this$0.sessionStoreItems;
        list.remove(sessionStoreItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
