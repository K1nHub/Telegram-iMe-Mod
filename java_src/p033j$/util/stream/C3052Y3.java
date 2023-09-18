package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2832I;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2885p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C3052Y3 extends AbstractC3057Z3 implements InterfaceC2886q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3052Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3052Y3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC3057Z3, java.lang.Iterable, p033j$.lang.InterfaceC2782e
    /* renamed from: B */
    public InterfaceC2908s.InterfaceC2911c spliterator() {
        return new C3047X3(this, 0, this.f1019c, 0, this.f1018b);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        m482A();
        int i = this.f1018b;
        this.f1018b = i + 1;
        ((long[]) this.f954e)[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: c */
    public Object mo481c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }

    @Override // p033j$.lang.InterfaceC2782e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2886q) {
            mo294g((InterfaceC2886q) consumer);
        } else if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2832I.m637h(spliterator());
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: t */
    protected void mo480t(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2886q interfaceC2886q = (InterfaceC2886q) obj2;
        while (i < i2) {
            interfaceC2886q.accept(jArr[i]);
            i++;
        }
    }

    public String toString() {
        long[] jArr = (long[]) mo295e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1019c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1019c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: u */
    protected int mo479u(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: z */
    protected Object[] mo474z(int i) {
        return new long[i];
    }
}
