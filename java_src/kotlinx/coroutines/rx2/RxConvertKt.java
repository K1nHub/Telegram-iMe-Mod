package kotlinx.coroutines.rx2;

import io.reactivex.ObservableSource;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
/* compiled from: RxConvert.kt */
/* loaded from: classes6.dex */
public final class RxConvertKt {
    public static final <T> Flow<T> asFlow(ObservableSource<T> observableSource) {
        return FlowKt.callbackFlow(new RxConvertKt$asFlow$1(observableSource, null));
    }
}
