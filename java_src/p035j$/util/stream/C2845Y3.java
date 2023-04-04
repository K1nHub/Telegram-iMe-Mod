package p035j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.C2678p;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C2845Y3 extends AbstractC2850Z3 implements InterfaceC2679q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2845Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2845Y3(int i) {
        super(i);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3, java.lang.Iterable, p035j$.lang.InterfaceC2575e
    /* renamed from: B */
    public InterfaceC2701s.InterfaceC2704c spliterator() {
        return new C2840X3(this, 0, this.f935c, 0, this.f934b);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        m473A();
        int i = this.f934b;
        this.f934b = i + 1;
        ((long[]) this.f870e)[i] = j;
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: c */
    public Object mo472c(int i) {
        return new long[i];
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }

    @Override // p035j$.lang.InterfaceC2575e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2679q) {
            mo285g((InterfaceC2679q) consumer);
        } else if (AbstractC2806Q4.f830a) {
            AbstractC2806Q4.m491a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2625I.m629h(spliterator());
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: t */
    protected void mo471t(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2679q interfaceC2679q = (InterfaceC2679q) obj2;
        while (i < i2) {
            interfaceC2679q.accept(jArr[i]);
            i++;
        }
    }

    public String toString() {
        long[] jArr = (long[]) mo286e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f935c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f935c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: u */
    protected int mo470u(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // p035j$.util.stream.AbstractC2850Z3
    /* renamed from: z */
    protected Object[] mo465z(int i) {
        return new long[i];
    }
}
