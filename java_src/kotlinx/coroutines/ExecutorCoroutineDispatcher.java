package kotlinx.coroutines;

import java.io.Closeable;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
/* compiled from: Executors.kt */
/* loaded from: classes4.dex */
public abstract class ExecutorCoroutineDispatcher extends CoroutineDispatcher implements Closeable {
    static {
        new Key(null);
    }

    /* compiled from: Executors.kt */
    /* loaded from: classes4.dex */
    public static final class Key extends AbstractCoroutineContextKey<CoroutineDispatcher, ExecutorCoroutineDispatcher> {
        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: Executors.kt */
        /* renamed from: kotlinx.coroutines.ExecutorCoroutineDispatcher$Key$1 */
        /* loaded from: classes4.dex */
        static final class C31431 extends Lambda implements Function1<CoroutineContext.Element, ExecutorCoroutineDispatcher> {
            public static final C31431 INSTANCE = new C31431();

            C31431() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ExecutorCoroutineDispatcher invoke(CoroutineContext.Element element) {
                if (element instanceof ExecutorCoroutineDispatcher) {
                    return (ExecutorCoroutineDispatcher) element;
                }
                return null;
            }
        }

        private Key() {
            super(CoroutineDispatcher.Key, C31431.INSTANCE);
        }
    }
}
