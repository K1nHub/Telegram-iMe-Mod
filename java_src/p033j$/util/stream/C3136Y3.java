package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2916I;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2969p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C3136Y3 extends AbstractC3141Z3 implements InterfaceC2970q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3136Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3136Y3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3, java.lang.Iterable, p033j$.lang.InterfaceC2866e
    /* renamed from: B */
    public InterfaceC2992s.InterfaceC2995c spliterator() {
        return new C3131X3(this, 0, this.f1028c, 0, this.f1027b);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        m482A();
        int i = this.f1027b;
        this.f1027b = i + 1;
        ((long[]) this.f963e)[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: c */
    public Object mo481c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }

    @Override // p033j$.lang.InterfaceC2866e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2970q) {
            mo294g((InterfaceC2970q) consumer);
        } else if (AbstractC3097Q4.f923a) {
            AbstractC3097Q4.m500a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2916I.m637h(spliterator());
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: t */
    protected void mo480t(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2970q interfaceC2970q = (InterfaceC2970q) obj2;
        while (i < i2) {
            interfaceC2970q.accept(jArr[i]);
            i++;
        }
    }

    public String toString() {
        long[] jArr = (long[]) mo295e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1028c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1028c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: u */
    protected int mo479u(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // p033j$.util.stream.AbstractC3141Z3
    /* renamed from: z */
    protected Object[] mo474z(int i) {
        return new long[i];
    }
}
