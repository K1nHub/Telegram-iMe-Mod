package kotlinx.coroutines.android;

import android.os.Looper;
import com.iMe.common.IdFabric$RequestCode;
import java.util.List;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatcherFactory;
/* compiled from: HandlerDispatcher.kt */
/* loaded from: classes4.dex */
public final class AndroidDispatcherFactory implements MainDispatcherFactory {
    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public int getLoadPriority() {
        return IdFabric$RequestCode.file_saving_directory;
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public String hintOnError() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public /* bridge */ /* synthetic */ MainCoroutineDispatcher createDispatcher(List list) {
        return createDispatcher((List<? extends MainDispatcherFactory>) list);
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public HandlerContext createDispatcher(List<? extends MainDispatcherFactory> list) {
        return new HandlerContext(HandlerDispatcherKt.asHandler(Looper.getMainLooper(), true), null, 2, null);
    }
}
