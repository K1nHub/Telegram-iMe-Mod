package io.grpc;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.common.base.Preconditions;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes4.dex */
public final class InternalLogId {
    private static final AtomicLong idAlloc = new AtomicLong();
    private final String details;

    /* renamed from: id */
    private final long f512id;
    private final String typeName;

    public static InternalLogId allocate(Class<?> cls, String str) {
        return allocate(getClassName(cls), str);
    }

    public static InternalLogId allocate(String str, String str2) {
        return new InternalLogId(str, str2, getNextId());
    }

    static long getNextId() {
        return idAlloc.incrementAndGet();
    }

    InternalLogId(String str, String str2, long j) {
        Preconditions.checkNotNull(str, "typeName");
        Preconditions.checkArgument(!str.isEmpty(), "empty type");
        this.typeName = str;
        this.details = str2;
        this.f512id = j;
    }

    public long getId() {
        return this.f512id;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(shortName());
        if (this.details != null) {
            sb.append(": (");
            sb.append(this.details);
            sb.append(')');
        }
        return sb.toString();
    }

    private static String getClassName(Class<?> cls) {
        String simpleName = ((Class) Preconditions.checkNotNull(cls, SessionDescription.ATTR_TYPE)).getSimpleName();
        return !simpleName.isEmpty() ? simpleName : cls.getName().substring(cls.getPackage().getName().length() + 1);
    }

    public String shortName() {
        return this.typeName + "<" + this.f512id + ">";
    }
}
