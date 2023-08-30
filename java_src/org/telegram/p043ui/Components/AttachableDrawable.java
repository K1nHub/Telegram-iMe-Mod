package org.telegram.p043ui.Components;

import org.telegram.messenger.ImageReceiver;
/* renamed from: org.telegram.ui.Components.AttachableDrawable */
/* loaded from: classes6.dex */
public interface AttachableDrawable {
    void onAttachedToWindow(ImageReceiver imageReceiver);

    void onDetachedFromWindow(ImageReceiver imageReceiver);
}
