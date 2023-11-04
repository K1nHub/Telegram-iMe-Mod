package com.iMe.p030ui.wallet.fragment.usernames.details;

import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.DateFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import p033j$.util.DesugarTimeZone;
import timber.log.Timber;
/* compiled from: TonFragmentProductDetailsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsPresenter */
/* loaded from: classes4.dex */
public final class TonFragmentProductDetailsPresenter extends BasePresenter<TonFragmentProductDetailsView> {
    private final long expiresAt;
    private final TonFragmentItem.Product productItem;
    private final SchedulersProvider schedulersProvider;

    public TonFragmentProductDetailsPresenter(TonFragmentItem.Product productItem, SchedulersProvider schedulersProvider) {
        long j;
        Intrinsics.checkNotNullParameter(productItem, "productItem");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.productItem = productItem;
        this.schedulersProvider = schedulersProvider;
        try {
            j = DateFormatter.parse$default(DateFormatter.DateType.ISO_EXTENDED, productItem.getTimestamp(), null, DesugarTimeZone.getTimeZone("UTC"), 4, null).getTime();
        } catch (Exception e) {
            Timber.m6e(e);
            j = 0;
        }
        this.expiresAt = j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        TonFragmentItem.Product product = this.productItem;
        ((TonFragmentProductDetailsView) getViewState()).renderScreenData(product.getTitle(), product.getUsername(), product.getPriceText());
        if (this.expiresAt < DateExtKt.now()) {
            String string = LocaleController.getString("Expired", C3634R.string.Expired);
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"Expired\", R.string.Expired)");
            ((TonFragmentProductDetailsView) getViewState()).renderTimeLeft(string);
            return;
        }
        ((TonFragmentProductDetailsView) getViewState()).renderTimeLeft(getFormattedTimeLeft());
        subscribeToTimeLeftUpdates();
    }

    private final void subscribeToTimeLeftUpdates() {
        Observable<Long> observeOn = Observable.interval(1L, TimeUnit.SECONDS).subscribeOn(this.schedulersProvider.mo1011io()).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "interval(1, TimeUnit.SEC…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Long, Unit>() { // from class: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                m1720invoke(l);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1720invoke(Long it) {
                long j;
                String formattedTimeLeft;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                j = TonFragmentProductDetailsPresenter.this.expiresAt;
                if (j >= DateExtKt.now()) {
                    formattedTimeLeft = TonFragmentProductDetailsPresenter.this.getFormattedTimeLeft();
                    ((TonFragmentProductDetailsView) TonFragmentProductDetailsPresenter.this.getViewState()).renderTimeLeft(formattedTimeLeft);
                    return;
                }
                ((TonFragmentProductDetailsView) TonFragmentProductDetailsPresenter.this.getViewState()).finishScreen();
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getFormattedTimeLeft() {
        long now = this.expiresAt - DateExtKt.now();
        if (now <= 0) {
            String string = LocaleController.getString("Expired", C3634R.string.Expired);
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"Expired\", R.string.Expired)");
            return string;
        }
        StringBuilder sb = new StringBuilder();
        long days = TimeUnit.MILLISECONDS.toDays(now);
        if (days > 0) {
            sb.append(LocaleController.formatPluralString("Days", (int) days, new Object[0]));
        }
        if (sb.length() > 0) {
            sb.append(" ");
        }
        sb.append(DateFormatter.format$default(DateFormatter.DateType.ONLY_TIME_SECONDS, new Date(now - TimeUnit.DAYS.toMillis(days)), null, DesugarTimeZone.getTimeZone("UTC"), 4, null));
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply {\n…   )\n        }.toString()");
        return sb2;
    }
}
