package com.google.firebase.firestore.core;
/* loaded from: classes3.dex */
public class ListenSequence {
    private long previousSequenceNumber;

    public ListenSequence(long j) {
        this.previousSequenceNumber = j;
    }

    public long next() {
        long j = this.previousSequenceNumber + 1;
        this.previousSequenceNumber = j;
        return j;
    }
}
