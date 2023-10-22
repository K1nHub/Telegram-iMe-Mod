package kotlinx.coroutines;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: CoroutineContext.kt */
/* loaded from: classes4.dex */
public final class CoroutineId extends AbstractCoroutineContextElement implements ThreadContextElement<String> {
    public static final Key Key = new Key(null);

    /* renamed from: id */
    private final long f1395id;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CoroutineId) && this.f1395id == ((CoroutineId) obj).f1395id;
    }

    public int hashCode() {
        return ProfileData$$ExternalSyntheticBackport0.m1017m(this.f1395id);
    }

    public final long getId() {
        return this.f1395id;
    }

    public CoroutineId(long j) {
        super(Key);
        this.f1395id = j;
    }

    /* compiled from: CoroutineContext.kt */
    /* loaded from: classes4.dex */
    public static final class Key implements CoroutineContext.Key<CoroutineId> {
        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Key() {
        }
    }

    public String toString() {
        return "CoroutineId(" + this.f1395id + ')';
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public String updateThreadContext(CoroutineContext coroutineContext) {
        int lastIndexOf$default;
        CoroutineName coroutineName = (CoroutineName) coroutineContext.get(CoroutineName.Key);
        String str = (coroutineName == null || (str = coroutineName.getName()) == null) ? "coroutine" : "coroutine";
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) name, " @", 0, false, 6, (Object) null);
        if (lastIndexOf$default < 0) {
            lastIndexOf$default = name.length();
        }
        StringBuilder sb = new StringBuilder(str.length() + lastIndexOf$default + 10);
        String substring = name.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        sb.append(substring);
        sb.append(" @");
        sb.append(str);
        sb.append('#');
        sb.append(this.f1395id);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        currentThread.setName(sb2);
        return name;
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public void restoreThreadContext(CoroutineContext coroutineContext, String str) {
        Thread.currentThread().setName(str);
    }
}
