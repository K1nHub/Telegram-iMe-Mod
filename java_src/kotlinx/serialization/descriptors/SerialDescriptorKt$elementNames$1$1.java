package kotlinx.serialization.descriptors;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: SerialDescriptor.kt */
/* loaded from: classes4.dex */
public final class SerialDescriptorKt$elementNames$1$1 implements Iterator<String>, KMappedMarker, p033j$.util.Iterator {
    final /* synthetic */ SerialDescriptor $this_elementNames;
    private int elementsLeft;

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SerialDescriptorKt$elementNames$1$1(SerialDescriptor serialDescriptor) {
        this.$this_elementNames = serialDescriptor;
        this.elementsLeft = serialDescriptor.getElementsCount();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        return this.elementsLeft > 0;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public String next() {
        SerialDescriptor serialDescriptor = this.$this_elementNames;
        int elementsCount = serialDescriptor.getElementsCount();
        int i = this.elementsLeft;
        this.elementsLeft = i - 1;
        return serialDescriptor.getElementName(elementsCount - i);
    }
}
