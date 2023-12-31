package com.google.firebase.crashlytics.internal;

import java.io.File;
/* loaded from: classes3.dex */
public interface NativeSessionFileProvider {
    File getAppFile();

    File getDeviceFile();

    File getMetadataFile();

    File getMinidumpFile();

    File getOsFile();

    File getSessionFile();
}
