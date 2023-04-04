package com.google.firebase.firestore.bundle;

import com.google.firebase.firestore.remote.RemoteSerializer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import p035j$.util.DesugarTimeZone;
/* loaded from: classes3.dex */
public class BundleSerializer {
    private final SimpleDateFormat timestampFormat;

    public BundleSerializer(RemoteSerializer remoteSerializer) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH);
        this.timestampFormat = simpleDateFormat;
        GregorianCalendar gregorianCalendar = new GregorianCalendar(DesugarTimeZone.getTimeZone("UTC"));
        gregorianCalendar.setGregorianChange(new Date(Long.MIN_VALUE));
        simpleDateFormat.setCalendar(gregorianCalendar);
    }
}
