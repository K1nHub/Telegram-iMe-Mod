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
        return IdFabric$RequestCode.FILE_SAVING_DIRECTORY;
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public String hintOnError() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public MainCoroutineDispatcher createDispatcher(List<? extends MainDispatcherFactory> list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null) {
            throw new IllegalStateException("The main looper is not available");
        }
        return new HandlerContext(HandlerDispatcherKt.asHandler(mainLooper, true), null, 2, null);
    }
}
