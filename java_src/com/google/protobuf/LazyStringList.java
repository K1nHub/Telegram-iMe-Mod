package com.google.protobuf;

import java.util.List;
/* loaded from: classes3.dex */
public interface LazyStringList extends List {
    void add(ByteString byteString);

    Object getRaw(int i);

    List<?> getUnderlyingElements();

    LazyStringList getUnmodifiableView();
}
